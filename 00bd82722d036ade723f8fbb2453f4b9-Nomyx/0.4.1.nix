{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Nomyx";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed! The original (paper) game: www.nomic.net";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Nomyx" = {
          depends  = [
            (hsPkgs.Nomyx-Language)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.MissingH)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.acid-state)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-template)
            (hsPkgs.data-lens-fd)
            (hsPkgs.directory)
            (hsPkgs.either-unwrap)
            (hsPkgs.fb)
            (hsPkgs.filepath)
            (hsPkgs.happstack-authenticate)
            (hsPkgs.happstack-server)
            (hsPkgs.hint)
            (hsPkgs.hint-server)
            (hsPkgs.hscolour)
            (hsPkgs.ixset)
            (hsPkgs.mime-mail)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.reform)
            (hsPkgs.reform-blaze)
            (hsPkgs.reform-happstack)
            (hsPkgs.safe)
            (hsPkgs.safecopy)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.tar)
            (hsPkgs.temporary)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix-compat)
            (hsPkgs.web-routes)
            (hsPkgs.web-routes-happstack)
            (hsPkgs.web-routes-regular)
            (hsPkgs.web-routes-th)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }