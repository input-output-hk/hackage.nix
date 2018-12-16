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
        name = "hadoop-tools";
        version = "0.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley, Conrad Parker";
      homepage = "http://github.com/jystic/hadoop-tools";
      url = "";
      synopsis = "Tools for working with Hadoop.";
      description = "Tools for working with Hadoop.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.boxes)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protobuf)
            (hsPkgs.socks)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.xmlhtml)
          ];
        };
      };
    };
  }