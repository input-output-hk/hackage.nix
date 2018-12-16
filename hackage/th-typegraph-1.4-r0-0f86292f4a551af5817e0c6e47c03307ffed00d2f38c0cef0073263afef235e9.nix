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
        name = "th-typegraph";
        version = "1.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) David Fox";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/th-typegraph";
      url = "";
      synopsis = "Graph of the subtype relation";
      description = "This package is not the successor to th-typegraph-0.43, it is\na brand new package which forms the basis of a new package that\nwhat will eventually do what th-typegraph was supposed to.  What\nit *can* do is traverse the type \"TypeQ\", and includes versions\nof deriveSafeCopy and derivePathInfo that use the traversal to\navoid adding phantom types to the context of the instance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.fail)
          (hsPkgs.fgl)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.safecopy)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.sr-extra)
          (hsPkgs.syb)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-desugar)
          (hsPkgs.th-lift)
          (hsPkgs.th-lift-instances)
          (hsPkgs.th-orphans)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.userid)
          (hsPkgs.vector)
          (hsPkgs.web-routes)
        ];
      };
      tests = {
        "th-typegraph-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.th-lift)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.network-uri)
            (hsPkgs.th-typegraph)
          ];
        };
      };
    };
  }