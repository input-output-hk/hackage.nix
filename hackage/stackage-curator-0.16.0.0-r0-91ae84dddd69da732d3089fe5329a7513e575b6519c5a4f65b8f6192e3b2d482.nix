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
        name = "stackage-curator";
        version = "0.16.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/stackage-curator";
      url = "";
      synopsis = "Tools for curating Stackage bundles";
      description = "Please see <http://www.stackage.org/package/stackage-curator> for a description and documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.Cabal)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.conduit-extra)
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.text)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.unix-compat)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client-tls)
          (hsPkgs.temporary)
          (hsPkgs.data-default-class)
          (hsPkgs.stm)
          (hsPkgs.mono-traversable)
          (hsPkgs.async)
          (hsPkgs.streaming-commons)
          (hsPkgs.semigroups)
          (hsPkgs.xml-conduit)
          (hsPkgs.conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.html-conduit)
          (hsPkgs.mime-types)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-core)
          (hsPkgs.xml-types)
          (hsPkgs.cryptonite)
          (hsPkgs.cryptonite-conduit)
          (hsPkgs.memory)
          (hsPkgs.resourcet)
          (hsPkgs.lucid)
          (hsPkgs.store)
          (hsPkgs.syb)
          (hsPkgs.safe)
          (hsPkgs.vector)
          (hsPkgs.exceptions)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.monad-unlift)
          (hsPkgs.monad-unlift-ref)
        ];
      };
      exes = {
        "stackage-curator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stackage-curator)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-simple)
            (hsPkgs.system-filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.text)
          ];
        };
        "stackage-build-plan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stackage-curator)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-simple)
            (hsPkgs.text)
            (hsPkgs.aeson)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stackage-curator)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.Cabal)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }