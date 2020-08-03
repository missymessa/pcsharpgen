﻿using System.Collections.Generic;

namespace PCSharpGen.LstToLua
{
    internal class SourceDefinition
    {
        public string? SourceLong { get; }
        public string? SourceShort { get; }
        public string? SourceWeb { get; }
        public string? SourceDate { get; }

        private SourceDefinition(string? sourceLong, string? sourceShort, string? sourceWeb, string? sourceDate)
        {
            SourceLong = sourceLong;
            SourceShort = sourceShort;
            SourceWeb = sourceWeb;
            SourceDate = sourceDate;
        }

        public static SourceDefinition Parse(IReadOnlyList<TextSpan> fields)
        {
            //SOURCELONG: Core Rulebook    SOURCESHORT: CR SOURCEWEB:http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj	SOURCEDATE:2009-08

            string? sourceLong = null;
            string? sourceShort = null;
            string? sourceWeb = null;
            string? sourceDate = null;
            foreach (var field in fields)
            {
                var (k, v) = field.SplitTuple(':');

                var value = v.Value;
                switch (k.Value)
                {
                    case "SOURCELONG":
                        sourceLong = value;
                        break;
                    case "SOURCESHORT":
                        sourceShort = value;
                        break;
                    case "SOURCEWEB":
                        sourceWeb = value;
                        break;
                    case "SOURCEDATE":
                        sourceDate = value;
                        break;
                    default:
                        throw new ParseFailedException(field, $"Unknown source field '{k}'");
                }

            }
            return new SourceDefinition(sourceLong, sourceShort, sourceWeb, sourceDate);
        }

        public void Dump(LuaTextWriter output)
        {
            output.Write("SetSource(");
            output.WriteStartObject();

            output.WriteKeyValue("SourceLong", SourceLong);
            output.WriteKeyValue("SourceShort", SourceShort);
            output.WriteKeyValue("SourceWeb", SourceWeb);
            output.WriteKeyValue("SourceDate", SourceDate);

            output.WriteEndObject();
            output.Write(")\n");
        }
    }
}