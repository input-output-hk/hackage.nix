{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "safe-globals";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Safe top-level mutable variables which scope like ordinary values";
        description = "This library provides a way to declare @IORef@s, @TVar@s, @Chan@s, etc.\nat the top level of a module.\n\n* Declarations are safe.  User code does not invoke @unsafePerformIO@\nor compiler pragmas.\n\n* Variables are ordinary module-level bindings.  Their scope can be\ncontrolled through the usual module import/export mechanism.  Unrelated\ncode cannot interfere with private variables by guessing some global\nidentifier.\n\n* References are statically typed, and polymorphic references are statically\nforbidden.\n\n* The implementation is simple, and closely follows existing common practice.\n\nThis library does not prevent the software design problems caused by global\nstate.  Rather, it provides some implementation safety for those\ncircumstances where global state really is necessary.\n\nFundamentally this library just provides Template Haskell macros for the\nusual @unsafePerformIO@ trick, so it is subject to the same caveats.  In\nparticular, linking a module and then loading the same module dynamically\nthrough the GHC API may produce two copies of the same top-level variable.";
        buildType = "Simple";
      };
      components = {
        "safe-globals" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.template-haskell
          ];
        };
      };
    }