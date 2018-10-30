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
      specVersion = "1.16";
      identifier = {
        name = "bert";
        version = "1.2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 marius a. eriksen; (c) 2013 Roman Cheplyaka";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "marius a. eriksen, Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/bert";
      url = "";
      synopsis = "BERT implementation";
      description = "Implements the BERT serialization and RPC protocols\ndescribed at <http://bert-rpc.org/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.conduit)
          (hsPkgs.network-conduit)
          (hsPkgs.binary-conduit)
          (hsPkgs.void)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.async)
            (hsPkgs.network)
            (hsPkgs.bert)
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }