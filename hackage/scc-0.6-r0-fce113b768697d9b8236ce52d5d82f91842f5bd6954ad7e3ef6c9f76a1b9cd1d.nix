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
      specVersion = "1.2";
      identifier = {
        name = "scc";
        version = "0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008-2010 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/";
      url = "";
      synopsis = "Streaming component combinators";
      description = "SCC is a layered library of Streaming Component Combinators. The lowest layer defines stream abstractions and nested\nproducer-consumer coroutine pairs based on the Coroutine monad transformer. On top of that are streaming component\ntypes, a number of primitive streaming components and a set of component combinators. Finally, there is an executable\nthat exposes all the framework functionality in a command-line shell.\n\nThe original library design is based on paper <http://conferences.idealliance.org/extreme/html/2006/Blazevic01/EML2006Blazevic01.html>\n\nMario Bla&#382;evi&#263;, Streaming component combinators, Extreme Markup Languages, 2006.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.monad-parallel)
          (hsPkgs.monad-coroutine)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      exes = {
        "shsh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.monad-parallel)
            (hsPkgs.monad-coroutine)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.readline)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }