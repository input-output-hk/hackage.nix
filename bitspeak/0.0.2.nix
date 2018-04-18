{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bitspeak";
          version = "0.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bitspeak";
        url = "";
        synopsis = "Writing helper for those with Stephen Hawking like impairment.";
        description = "This is a proof-of-concept application for exercising writing\nusing binary choices, i.e., selecting from two sets of\nconsecutive letters. This is tiresome, but for those suffering\nfrom motor neuron diseases (specially one like amyotrophic\nlateral sclerosis, where cognitive functions remain intact) even\nthis small program can already be used to comunicate with the\nhelp of an assistant.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bitspeak = {
            depends  = [
              hsPkgs.base
              hsPkgs.bindings-DSL
              hsPkgs.bindings-glib
              hsPkgs.bindings-gobject
            ];
          };
        };
      };
    }