{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sshd-lint";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2015 Stack Builders Inc.";
        maintainer = "justin@stackbuilders.com";
        author = "Justin Leitgeb";
        homepage = "";
        url = "";
        synopsis = "Check sshd configuration for adherence to best practices";
        description = "If not configured correctly, it may be easy for attackers\nto gain access to a system. sshd-lint checks the sshd_config file\nfor adherence to best practices.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sshd-lint = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.keyword-args
              hsPkgs.containers
              hsPkgs.nagios-check
            ];
          };
        };
        tests = {
          sshd-lint-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.keyword-args
              hsPkgs.containers
              hsPkgs.nagios-check
              hsPkgs.hspec
            ];
          };
        };
      };
    }