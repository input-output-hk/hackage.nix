{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "agentx";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chemistmail@gmail.com";
        author = "chemist";
        homepage = "";
        url = "";
        synopsis = "AgentX protocol for snmp subagents";
        description = "Native implementation agentx protocol (rfc2741)";
        buildType = "Simple";
      };
      components = {
        agentx = {
          depends  = [
            hsPkgs.base
            hsPkgs.snmp
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.bitwise
            hsPkgs.network
            hsPkgs.fclabels
            hsPkgs.Diff
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.containers
            hsPkgs.safe
            hsPkgs.pipes-network
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
          ];
        };
      };
    }