{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-zeromq4"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Matthew Peddie";
      maintainer = "Matthew Peddie <mpeddie@gmail.com>";
      author = "Matthew Peddie <mpeddie@gmail.com>";
      homepage = "https://github.com/peddie/pipes-zeromq4";
      url = "";
      synopsis = "Pipes integration for ZeroMQ messaging";
      description = "<https://hackage.haskell.org/package/pipes Pipes> integration for\n<http://zeromq.org/ ZeroMQ> using the\n<https://hackage.haskell.org/package/zeromq4-haskell zeromq4-haskell bindings>.\n\nThis package is very basic.  I am new to the @Pipes@ family of APIs\nand would be overjoyed to receive feedback.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          ];
        };
      exes = {
        "proxy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pipes-zeromq4)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.bytestring)
            ];
          };
        "client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pipes-zeromq4)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.semigroups)
            ];
          };
        "server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pipes-zeromq4)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.semigroups)
            ];
          };
        "serverPipeline" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pipes-zeromq4)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.semigroups)
            ];
          };
        };
      };
    }