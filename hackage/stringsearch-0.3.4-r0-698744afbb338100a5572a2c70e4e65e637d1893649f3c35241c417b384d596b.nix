{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; base3 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stringsearch"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2011\nDaniel Fischer, Chris Kuklewicz, Justin Bailey";
      maintainer = "daniel.is.fischer@googlemail.com";
      author = "Daniel Fischer, Chris Kuklewicz, Justin Bailey";
      homepage = "";
      url = "";
      synopsis = "Fast searching, splitting and replacing of ByteStrings";
      description = "This package provides several functions to quickly\nsearch for substrings in strict or lazy ByteStrings.\nIt also provides functions for breaking or splitting\non substrings and replacing all occurrences of a\nsubstring (the first in case of overlaps) with another.\nGHC before 6.8 are no longer supported, other compilers\nonly if they support BangPatterns. If you need it to\nwork with other compilers, send a feature request.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.base4
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else if flags.base3
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
        buildable = true;
        };
      };
    }