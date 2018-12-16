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
        name = "freelude";
        version = "0.3.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/freelude#readme";
      url = "";
      synopsis = "A generalisation of the Category->Functor->Applicative->Monad hierarchy and more";
      description = "This package generalises classes like Category, Functor etc to allow them to be defined on more data types, for example, tuples and sets, whilst still attempting to maintain backward compatability.\n\nSee the module \"Freelude\" for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.indextype)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.doctest)
            (hsPkgs.indextype)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }