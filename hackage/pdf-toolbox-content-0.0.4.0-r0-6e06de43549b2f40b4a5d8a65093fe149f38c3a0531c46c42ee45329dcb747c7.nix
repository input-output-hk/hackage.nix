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
        name = "pdf-toolbox-content";
        version = "0.0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2013-2015";
      maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/pdf-toolbox";
      url = "";
      synopsis = "A collection of tools for processing PDF files";
      description = "Tools for processing PDF content streams";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.text)
          (hsPkgs.io-streams)
          (hsPkgs.pdf-toolbox-core)
        ];
      };
    };
  }