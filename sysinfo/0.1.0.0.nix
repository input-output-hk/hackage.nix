{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sysinfo";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Sibi";
        maintainer = "sibi@psibi.in";
        author = "Sibi Prabakaran";
        homepage = "https://github.com/psibi/sysinfo#readme";
        url = "";
        synopsis = "Haskell Interface for getting overall system statistics";
        description = "This package can be used to get system statistics like\nuptime, free memory, system load etc. Note that\nthe package works *only* on Linux system with\nkernel version >= 2.3.23 and uses FFI calls.";
        buildType = "Simple";
      };
      components = {
        sysinfo = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          sysinfo-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.sysinfo
              hsPkgs.hspec
              hsPkgs.hspec-expectations
            ];
          };
        };
      };
    }