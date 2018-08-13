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
      specVersion = "1.6.0";
      identifier = {
        name = "fixed-list";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "job.vranish@gmail.com";
      author = "Job Vranish";
      homepage = "http://github.com/jvranish/FixedList/tree/master";
      url = "";
      synopsis = "A fixed length list type";
      description = "A fixed length list type that encodes its length in its type in a natural way, and is a member of Applicative, Functor, Foldable, Traversable, and Monad.";
      buildType = "Simple";
    };
    components = {
      "fixed-list" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }