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
      specVersion = "1.2";
      identifier = {
        name = "lax";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2007 Brandenburg University of Technology, Cottbus";
      maintainer = "jeltsch@informatik.tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/lax-0.0.0";
      url = "http://hackage.haskell.org/packages/archive/lax/0.0.0/lax-0.0.0.tar.gz";
      synopsis = "Lax arrows";
      description = "Lax arrows are variants of other arrows which are &#x201C;less strict&#x201D; than\nthe original arrows.  They can be used, for example, to produce I\\/O fixpoints in\nsituations where @fixIO@ would fail.";
      buildType = "Simple";
    };
    components = {
      "lax" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }