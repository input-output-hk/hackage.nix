{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "process-extras";
        version = "0.3.4";
      };
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
          (hsPkgs.base)
          (hsPkgs.ListLike)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.generic-deriving)
        ];
      };
    };
  }