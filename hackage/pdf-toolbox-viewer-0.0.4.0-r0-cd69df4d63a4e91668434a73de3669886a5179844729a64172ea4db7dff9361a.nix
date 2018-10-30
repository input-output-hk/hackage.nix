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
        name = "pdf-toolbox-viewer";
        version = "0.0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2012-2014";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/pdf-toolbox";
      url = "";
      synopsis = "Simple pdf viewer";
      description = "Proof of concept, only for debuging";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pdf-toolbox-viewer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.io-streams)
            (hsPkgs.cairo)
            (hsPkgs.gtk)
            (hsPkgs.pdf-toolbox-document)
            (hsPkgs.pdf-toolbox-content)
          ];
        };
      };
    };
  }