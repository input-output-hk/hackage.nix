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
        name = "flowdock-rest";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/futurice/haskell-flowdock-rest#readme";
      url = "";
      synopsis = "Flowdock REST API";
      description = "Bindings to the <https://www.flowdock.com/api/rest Flowdock REST API>.\n\nCurrently there are only non-destructive operations.\nAlso not all types are written out.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.binary)
          (hsPkgs.binary-orphans)
          (hsPkgs.binary-tagged)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.generics-sop)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "flowdock-rest-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.binary)
            (hsPkgs.binary-orphans)
            (hsPkgs.binary-tagged)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.generics-sop)
            (hsPkgs.hashable)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.lens)
            (hsPkgs.semigroups)
            (hsPkgs.tagged)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.flowdock-rest)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.file-embed)
          ];
        };
      };
    };
  }