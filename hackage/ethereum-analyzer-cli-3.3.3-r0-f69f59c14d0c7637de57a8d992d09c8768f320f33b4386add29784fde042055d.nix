{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ethereum-analyzer-cli"; version = "3.3.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/zchn/ethereum-analyzer";
      url = "";
      synopsis = "A CLI frontend for ethereum-analyzer.";
      description = "A CLI frontend for ethereum-analyzer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."ethereum-analyzer" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer"))
          (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
          (hsPkgs."hoopl" or ((hsPkgs.pkgs-errors).buildDepError "hoopl"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."json-rpc" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."optparse-text" or ((hsPkgs.pkgs-errors).buildDepError "optparse-text"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."tostring" or ((hsPkgs.pkgs-errors).buildDepError "tostring"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ea-analyze" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ethereum-analyzer-cli" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-cli"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          buildable = true;
          };
        "ea-bytecode-vis" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ethereum-analyzer-cli" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-cli"))
            (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          buildable = true;
          };
        "ea-dump-contract" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ethereum-analyzer-cli" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-cli"))
            (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          buildable = true;
          };
        };
      };
    }