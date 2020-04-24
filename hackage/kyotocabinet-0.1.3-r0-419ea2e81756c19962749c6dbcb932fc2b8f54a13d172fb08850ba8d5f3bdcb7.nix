{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "kyotocabinet"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Francesco Mazzoli (f@mazzo.li)";
      author = "Francesco Mazzoli (f@mazzo.li)";
      homepage = "";
      url = "";
      synopsis = "Mid level bindings to Kyoto Cabinet";
      description = "Mid level bindings to Kyoto Cabinet, plus some wrappers data type for ease of use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."kyotocabinet" or ((hsPkgs.pkgs-errors).sysDepError "kyotocabinet"))
          ];
        buildable = true;
        };
      };
    }