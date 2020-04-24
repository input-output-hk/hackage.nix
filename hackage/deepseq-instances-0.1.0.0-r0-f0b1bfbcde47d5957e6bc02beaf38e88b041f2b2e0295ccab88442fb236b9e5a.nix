{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "deepseq-instances"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Travis Whitaker 2020";
      maintainer = "pi.boy.travis@gmail.com";
      author = "Travis Whitaker";
      homepage = "https://github.com/TravisWhitaker/deepseq-instances";
      url = "";
      synopsis = "Candidate NFData Instances for Types in base";
      description = "Candidate NFData Instances for Types in base\nThis package provides correct-but-controversial NFData instances for types\nin base. See this GitHub pull request for more details:\n<https://github.com/haskell/deepseq/pull/50>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }