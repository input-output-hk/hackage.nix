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
      specVersion = "1.6";
      identifier = {
        name = "neither";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/neither";
      url = "";
      synopsis = "Provide versions of Either with good monad and applicative instances.";
      description = "The standard Either datatype suffers from a lack of monad and applicative instances. To make matters worse, the mtl and transformers packages provide orphan instances which conflict with each other, as well as defining a transformer version which has an usually unnecessary superclass constraint.\n\nBesides these annoyances, there is another issue: there exist two reasonable definitions of the Applicative instance for Either: one the holds onto only the first Left value, or one that appends all Left values together via a Monoid instance. The former is compatible with the monad instance, while the latter is not.\n\nThis package defines three datatypes, some helpers functions and instances. The data types are AEither, MEither and MEitherT. AEither provides an Applicative instance which appends Left values, MEither provides the monadic definition, and MEitherT is a monad transformer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.failure)
        ];
      };
    };
  }