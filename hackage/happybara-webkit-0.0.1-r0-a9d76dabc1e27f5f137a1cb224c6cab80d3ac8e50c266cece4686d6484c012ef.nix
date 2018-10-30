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
        name = "happybara-webkit";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 Charles Strahan";
      maintainer = "charles.c.strahan@gmail.com";
      author = "Charles Strahan";
      homepage = "https://github.com/cstrahan/happybara/happybara-webkit";
      url = "";
      synopsis = "WebKit Happybara driver";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.happybara)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.word8)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.filepath)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
        ];
      };
    };
  }