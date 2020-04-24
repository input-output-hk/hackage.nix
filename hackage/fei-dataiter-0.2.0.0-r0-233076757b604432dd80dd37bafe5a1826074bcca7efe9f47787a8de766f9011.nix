{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fei-dataiter"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/fei-dataiter#readme";
      url = "";
      synopsis = "mxnet dataiters";
      description = "Providing the mxnet dataiters as Stream or Conduit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
          (hsPkgs."fei-nn" or ((hsPkgs.pkgs-errors).buildDepError "fei-nn"))
          ];
        buildable = true;
        };
      exes = {
        "mxnet-dataiter-gen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            ];
          libs = [
            (pkgs."mxnet" or ((hsPkgs.pkgs-errors).sysDepError "mxnet"))
            ];
          buildable = true;
          };
        };
      tests = {
        "streaming" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            (hsPkgs."fei-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "fei-dataiter"))
            ];
          buildable = true;
          };
        "conduit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            (hsPkgs."fei-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "fei-dataiter"))
            ];
          buildable = true;
          };
        };
      };
    }