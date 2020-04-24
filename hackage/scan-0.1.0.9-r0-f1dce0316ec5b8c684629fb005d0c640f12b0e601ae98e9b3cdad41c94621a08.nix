{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { parsec1 = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "scan"; version = "0.1.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Christian Maeder 2010";
      maintainer = "chr.maeder@web.de";
      author = "chr.maeder@web.de";
      homepage = "http://projects.haskell.org/style-scanner";
      url = "";
      synopsis = "lexical style suggestions for source code";
      description = "scan checks the format of your haskell source code regarding:\ncomments, white spaces and line breaks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "scan" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (if flags.parsec1
            then [
              (hsPkgs."parsec1" or ((hsPkgs.pkgs-errors).buildDepError "parsec1"))
              ]
            else [
              (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
              ]);
          buildable = true;
          };
        };
      };
    }