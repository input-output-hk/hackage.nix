{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      example-client = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "libssh2-conduit";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "https://github.com/portnov/libssh2-hs";
      url = "";
      synopsis = "Conduit wrappers for libssh2 FFI bindings (see libssh2 package).";
      description = "This package provides Conduit interface (see conduit package) for\nlibssh2 FFI bindings (see libssh2 package). This allows one to\nreceive data from SSH channels lazily, without need to read\nall channel output to the memory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.libssh2)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hs-ssh-client" = {
          depends  = pkgs.lib.optionals (flags.example-client) [
            (hsPkgs.base)
            (hsPkgs.libssh2)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.libssh2-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }