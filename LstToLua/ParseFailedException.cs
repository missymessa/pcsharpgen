﻿using System;

namespace Primordially.LstToLua
{
    internal class ParseFailedException : Exception
    {
        public ParseFailedException(TextSpan text, string message)
            :base($"{text.File}({text.LineNumber}, {text.LinePosition}): error {message}")
        {
        }
    }
}