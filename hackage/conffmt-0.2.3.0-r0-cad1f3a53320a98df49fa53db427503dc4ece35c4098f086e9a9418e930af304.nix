{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conffmt"; version = "0.2.3.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/beijaflor-io/haskell-language-conf#readme";
      url = "";
      synopsis = "A .conf file formatter";
      description = "\"conffmt\" is a @.conf@ file formatter that serves as an example of @language-conf@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "conffmt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."language-conf" or ((hsPkgs.pkgs-errors).buildDepError "language-conf"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }