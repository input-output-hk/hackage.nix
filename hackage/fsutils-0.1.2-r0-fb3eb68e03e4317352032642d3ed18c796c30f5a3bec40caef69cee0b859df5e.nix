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
      specVersion = "1.8";
      identifier = {
        name = "fsutils";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "i@raynes.me";
      author = "Anthony Grimes";
      homepage = "https://github.com/Raynes/fsutils";
      url = "";
      synopsis = "File system utilities for Haskell that are missing from built in libraries.";
      description = "A collection of file system utilities such as recursive walks and file listings\nthat I couldn't find nice solutions for elsewhere.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
    };
  }