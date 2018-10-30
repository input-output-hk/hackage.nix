{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      explicittext = true;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-prelude";
        version = "0.20";
      };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "http://scravy.de/hydrogen-prelude/";
      url = "";
      synopsis = "Hydrogen Prelude";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hydrogen-multimap)
          (hsPkgs.hydrogen-version)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uuid)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.le "7.6") [
          (hsPkgs.ghc-prim)
          (hsPkgs.text)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.6") (hsPkgs.binary);
      };
    };
  }