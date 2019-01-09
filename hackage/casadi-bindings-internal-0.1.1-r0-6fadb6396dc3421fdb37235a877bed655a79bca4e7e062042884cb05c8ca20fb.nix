{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "casadi-bindings-internal"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "http://github.com/ghorn/casadi-bindings";
      url = "";
      synopsis = "low level bindings to CasADi";
      description = "Debian/Ubuntu instructions\n\nVersion numbers correspond to the C++ library version numbers except the very last number which may indicate breaking changes.\n\nThis only works on Debian/Ubuntu at the moment (sorry).\n\nInstall libcasadi from a .deb package here: https://github.com/casadi/casadi/releases, I use libcasadi-shared. (Get the version corresponding to the current casadi-bindings version, for example casadi-bindings-1.9.0.0 is libcasadi 1.9.0)\n\nThen,\n- `cabal update; cabal install casadi-bindings`\n\nTemporary note: there is something wrong with casadi and ipopt related to http://list.coin-or.org/pipermail/ipopt/2014-April/003670.html, and https://github.com/casadi/casadi/issues/1075. At the moment this .cabal package works for me as is, but YMMV";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vector) ];
        libs = [ (pkgs."stdc++") ];
        pkgconfig = [ (pkgconfPkgs.casadi_core) ];
        };
      };
    }