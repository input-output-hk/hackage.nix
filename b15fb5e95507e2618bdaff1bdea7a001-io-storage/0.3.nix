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
      specVersion = "1.6";
      identifier = {
        name = "io-storage";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Will Donnelly";
      maintainer = "Will Donnelly <will.donnelly@gmail.com>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/io-storage";
      url = "";
      synopsis = "A key-value store in the IO monad.";
      description = "This library allows an application to extend the 'global state'\nhidden inside the IO monad with semi-arbitrary data. Data is\nrequired to be 'Typeable'. The library provides an essentially\nunbounded number of key-value stores indexed by strings, with\neach key within the stores also being a string.";
      buildType = "Simple";
    };
    components = {
      "io-storage" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }