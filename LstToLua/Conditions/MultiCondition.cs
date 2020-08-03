﻿using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.LstToLua.Conditions
{
    internal class MultiCondition : Condition
    {
        public MultiCondition(bool inverted, int count, List<string> conditions) : base(inverted)
        {
            Count = count;
            Conditions = conditions;
        }

        public int Count { get; }
        public List<string> Conditions { get; }

        public override void DumpCondition(LuaTextWriter output)
        {
            var condition = $"({string.Join(" + ", Conditions.Select(c => $"({c})"))}) >= {Count}";
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }
    }
}