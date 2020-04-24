{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "process-extras"; version = "0.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Lazar, Bas van Dijk, David Fox";
      homepage = "https://github.com/seereason/process-extras";
      url = "";
      synopsis = "Process extras";
      description = "Extends <http://hackage.haskell.org/package/process>.\nRead process input and output as ByteStrings or\nText, or write your own ProcessOutput instance.\nLazy process input and output.  ProcessMaker class\nfor more flexibility in the process creation API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          ];
        buildable = true;
        };
      };
    }