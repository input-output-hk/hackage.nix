{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bounded-tchan";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas M. DuBuisson (2011)";
        maintainer = "thomas.dubuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Bounded Transactional channels (queues)";
        description = "Bounded TChan's, or BTChan's, are a transactional queue with a limit to the number of elements (further calls to @writeBTChan@ or @unGetBTChan@ call STM retry).  Users are strongly encouraged to consider using the more complete 'stm-chans' packages, which includes a bounded TChan designed on this package.";
        buildType = "Simple";
      };
      components = {
        bounded-tchan = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }