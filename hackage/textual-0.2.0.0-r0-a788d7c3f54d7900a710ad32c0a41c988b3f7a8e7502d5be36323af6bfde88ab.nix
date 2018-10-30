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
      specVersion = "1.10";
      identifier = {
        name = "textual";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/text-like/";
      url = "";
      synopsis = "Textual type class for data that represent text";
      description = "Exposes the Textual type class, for data that represent textual content\n\nAlso, exposes a simple utility for conversion between instances, much like\nfromIntegral converts between Integral instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
        ];
      };
    };
  }