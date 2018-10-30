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
      specVersion = "1.4";
      identifier = {
        name = "bindings-gts";
        version = "0.0.2";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Joel Crisp <joel.a.crisp@googlemail.com>";
      author = "Maurício C. Antunes (Bindings-DSL), Joel Crisp (Bindings-GTS), Stephane Popinet <s.popinet at niwa.co.nz> (GTS)";
      homepage = "http://gts.sourceforge.net/";
      url = "";
      synopsis = "Low level bindings supporting GTS, the GNU Triangulated Surface Library";
      description = "This package contains bindings to GTS library using bindings-DSL\nmacros and style. Like GObject, it's not useful by itself, but as a\nfoundation for other libraries making use of its type system.\n\nNOTE: these bindings were not made by the author(s) of GTS so please\ndon't bug them about issues with the bindings! Any errors in these\nbindings are my responsibility not that of the GTS team.\n\nNOTE: Not all functionality is covered by these bindings at this\ntime, but there should be enough to be useful.\n\nNOTE: Documentation does not build on Hackage DB (due to Hackage\nbuild hosts not having GTS on them) but can be built with\n/cabal haddock/\n\nChangelog:\n\n* 0.0.1 Initial version.\n\n* 0.0.2 Improved documentation; added some missing functions; fixed a function name; bumped version of base to >=4\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bindings-glib)
          (hsPkgs.bindings-gobject)
        ];
        pkgconfig = [
          (pkgconfPkgs.gobject-2.0)
          (pkgconfPkgs.gthread-2.0)
          (pkgconfPkgs.gmodule-2.0)
          (pkgconfPkgs.gts)
        ];
      };
    };
  }