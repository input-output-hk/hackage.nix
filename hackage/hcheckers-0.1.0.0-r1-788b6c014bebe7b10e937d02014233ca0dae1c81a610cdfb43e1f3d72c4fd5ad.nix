{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { verbose = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hcheckers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/hcheckers#readme";
      url = "";
      synopsis = "Implementation of checkers (\"draughts\") board game - server application";
      description = "Please see the README on GitHub at <https://github.com/portnov/hcheckers#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hcheckersd" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
            (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))
            (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
            (hsPkgs."heavy-logger" or ((hsPkgs.pkgs-errors).buildDepError "heavy-logger"))
            (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."monad-metrics" or ((hsPkgs.pkgs-errors).buildDepError "monad-metrics"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."random-access-file" or ((hsPkgs.pkgs-errors).buildDepError "random-access-file"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
            (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-format-heavy" or ((hsPkgs.pkgs-errors).buildDepError "text-format-heavy"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unix-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "unix-bytestring"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }