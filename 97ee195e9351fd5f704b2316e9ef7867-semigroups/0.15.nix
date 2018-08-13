{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      hashable = true;
      bytestring = true;
      containers = true;
      text = true;
      unordered-containers = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "semigroups";
        version = "0.15";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/semigroups/";
      url = "";
      synopsis = "Anything that associates";
      description = "In mathematics, a semigroup is an algebraic structure consisting of a set together with an associative binary operation. A semigroup generalizes a monoid in that there might not exist an identity element. It also (originally) generalized a group (a monoid with all inverses) to a type where every element did not have to have an inverse, thus the name semigroup.";
      buildType = "Simple";
    };
    components = {
      "semigroups" = {
        depends  = ((((([
          (hsPkgs.base)
          (hsPkgs.nats)
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.5")) (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (_flags.bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (_flags.containers) (hsPkgs.containers)) ++ pkgs.lib.optional (_flags.text) (hsPkgs.text)) ++ pkgs.lib.optional (_flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (_flags.hashable && _flags.unordered-containers) (hsPkgs.unordered-containers);
      };
    };
  }