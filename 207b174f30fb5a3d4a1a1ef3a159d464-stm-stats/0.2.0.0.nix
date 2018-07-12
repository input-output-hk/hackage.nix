{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stm-stats";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
        author = "David Leuschner <leuschner@factisresearch.com>,\nStefan Wehr <wehr@factisresearch.com>,\nJoachim Breitner <mail@joachim-breitner.de>";
        homepage = "";
        url = "";
        synopsis = "retry statistics for STM transactions";
        description = "This module provides functions that can replace calls to\n'atomically' and count how often the transaction was retried\nuntil it succeeded. It can emit warnings when transaction are\nretried more often than a given threshold, and provides global\nstatistics across all transaction.\n\nAs an additional feature, if the transaction was named,\ntransaction-related exceptions such as\n'BlockedIndefinitelyOnSTM' are replaced by variants that\nindicate which transaction caused the exception.\n\n/Changelog:/\n\n[0.2.0.0] (2011-10-10)\n\n[ ] Added 'warnInSTMFunction' to 'TrackSTMConf'.\n\n[ ] Bugfix with the global retry count warning.\n\n[0.1.0.0] (2011-10-09)\n\n[ ] Initial Release";
        buildType = "Simple";
      };
      components = {
        "stm-stats" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.stm
            hsPkgs.template-haskell
          ];
        };
      };
    }