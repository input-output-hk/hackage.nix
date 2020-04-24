{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mxnet-dataiter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/mxnet-dataiter#readme";
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
          (hsPkgs."mxnet" or ((hsPkgs.pkgs-errors).buildDepError "mxnet"))
          (hsPkgs."mxnet-nn" or ((hsPkgs.pkgs-errors).buildDepError "mxnet-nn"))
          ];
        buildable = true;
        };
      tests = {
        "streaming" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."mxnet" or ((hsPkgs.pkgs-errors).buildDepError "mxnet"))
            (hsPkgs."mxnet-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "mxnet-dataiter"))
            ];
          buildable = true;
          };
        "conduit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mxnet" or ((hsPkgs.pkgs-errors).buildDepError "mxnet"))
            (hsPkgs."mxnet-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "mxnet-dataiter"))
            ];
          buildable = true;
          };
        };
      };
    }