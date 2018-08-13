{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hexpress";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "linuxbash8@gmail.com";
      author = "Alec Snyder";
      homepage = "https://github.com/allonsy/hexpress";
      url = "";
      synopsis = "An express-like http framework";
      description = "Hexpress is an express like http framework to make it easy to write http servers. It is built on the warp http and is blazing fast. See the github readme for more information.";
      buildType = "Simple";
    };
    components = {
      "hexpress" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.aeson)
          (hsPkgs.vault)
          (hsPkgs.text)
          (hsPkgs.warp)
          (hsPkgs.mime-types)
          (hsPkgs.case-insensitive)
        ];
      };
    };
  }