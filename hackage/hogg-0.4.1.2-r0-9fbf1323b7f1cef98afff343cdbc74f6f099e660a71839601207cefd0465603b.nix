{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; http = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hogg"; version = "0.4.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Conrad Parker, 2007-2011";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker";
      homepage = "http://www.kfish.org/software/hogg/";
      url = "";
      synopsis = "Library and tools to manipulate the Ogg container format";
      description = "The HOgg package provides a commandline tool for manipulating Ogg files.\nIt supports chained and multiplexed Ogg bitstreams and Ogg Skeleton.\nHOgg also includes a library that may be used by other packages for handling\nthe Ogg container format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]) ++ (pkgs.lib).optional (flags.http) (hsPkgs."HTTP1" or ((hsPkgs.pkgs-errors).buildDepError "HTTP1"));
        buildable = true;
        };
      exes = {
        "hogg" = { buildable = true; };
        "ListMergeTest" = { buildable = true; };
        };
      };
    }