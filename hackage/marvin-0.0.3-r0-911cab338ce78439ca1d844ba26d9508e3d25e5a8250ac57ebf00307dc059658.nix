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
        name = "marvin";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "https://github.com/JustusAdam/marvin#readme";
      url = "";
      synopsis = "A modular bot for slack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.pcre-light)
          (hsPkgs.vector)
          (hsPkgs.optparse-generic)
          (hsPkgs.configurator)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.async)
          (hsPkgs.hslogger)
          (hsPkgs.text-format)
          (hsPkgs.websockets)
          (hsPkgs.network-uri)
          (hsPkgs.wuss)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.mono-traversable)
        ];
      };
      exes = {
        "marvin-pp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mustache)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.marvin)
            (hsPkgs.configurator)
            (hsPkgs.optparse-applicative)
            (hsPkgs.bytestring)
            (hsPkgs.mono-traversable)
            (hsPkgs.text)
            (hsPkgs.aeson)
          ];
        };
        "marvin-init" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mustache)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mono-traversable)
            (hsPkgs.text)
          ];
        };
      };
    };
  }