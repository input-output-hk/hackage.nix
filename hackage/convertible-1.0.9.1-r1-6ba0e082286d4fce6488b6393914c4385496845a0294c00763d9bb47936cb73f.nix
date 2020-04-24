{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; buildtests = false; time_gte_113 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "convertible"; version = "1.0.9.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/convertible";
      url = "";
      synopsis = "Typeclasses and instances for converting between types";
      description = "convertible provides a typeclass with a single function\nthat is designed to help convert between different types: numeric\nvalues, dates and times, and the like.  The conversions perform bounds\nchecking and return a pure Either value.  This means that you need\nnot remember which specific function performs the conversion you\ndesire.\n\nAlso included in the package are optional instances that provide\nconversion for various numeric and time types, as well as utilities\nfor writing your own instances.\n\nFinally, there is a function that will raise an exception on\nbounds-checking violation, or return a bare value otherwise,\nimplemented in terms of the safer function described above.\n\nConvertible is also used by HDBC 2.0 for handling marshalling of\ndata to and from databases.\n\nConvertible is backed by an extensive test suite and passes tests\non GHC and Hugs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ] ++ [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."testpack" or ((hsPkgs.pkgs-errors).buildDepError "testpack"))
            ] ++ [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]);
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }