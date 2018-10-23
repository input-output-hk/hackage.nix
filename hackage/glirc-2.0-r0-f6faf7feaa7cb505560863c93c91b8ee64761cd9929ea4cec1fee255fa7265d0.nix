{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "glirc";
        version = "2.0";
      };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "";
      url = "";
      synopsis = "Console IRC client";
      description = "Console IRC client";
      buildType = "Custom";
    };
    components = {
      exes = {
        "glirc2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.connection)
            (hsPkgs.text)
            (hsPkgs.text-icu)
            (hsPkgs.config-value)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.attoparsec)
            (hsPkgs.array)
            (hsPkgs.vty)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.network)
            (hsPkgs.tls)
            (hsPkgs.split)
            (hsPkgs.profunctors)
            (hsPkgs.x509-system)
            (hsPkgs.x509-store)
            (hsPkgs.x509)
            (hsPkgs.transformers)
            (hsPkgs.data-default-class)
            (hsPkgs.stm)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }