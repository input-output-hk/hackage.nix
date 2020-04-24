{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "webify"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "(c) 2013 Anantha Kumaran";
      maintainer = "ananthakumaran@gmail.com";
      author = "Anantha Kumaran";
      homepage = "http://github.com/ananthakumaran/webify";
      url = "";
      synopsis = "webfont generator";
      description = "A command line tool to convert ttf file to woff, eot & svg files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "webify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."binary-strict" or ((hsPkgs.pkgs-errors).buildDepError "binary-strict"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."xmlgen" or ((hsPkgs.pkgs-errors).buildDepError "xmlgen"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hopfli" or ((hsPkgs.pkgs-errors).buildDepError "hopfli"))
            ];
          buildable = true;
          };
        };
      };
    }