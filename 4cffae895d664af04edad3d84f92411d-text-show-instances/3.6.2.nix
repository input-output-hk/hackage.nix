{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-show-instances";
          version = "3.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2014-2017 Ryan Scott";
        maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
        author = "Ryan Scott";
        homepage = "https://github.com/RyanGlScott/text-show-instances";
        url = "";
        synopsis = "Additional instances for text-show";
        description = "@text-show-instances@ is a supplemental library to @text-show@\nthat provides additional @Show@ instances for data types in\ncommon Haskell libraries and GHC dependencies that are not\nencompassed by @text-show@. Currently, @text-show-instances@\ncovers these libraries:\n\n* @<http://hackage.haskell.org/package/bifunctors           bifunctors>@\n\n* @<http://hackage.haskell.org/package/binary               binary>@\n\n* @<http://hackage.haskell.org/package/containers           containers>@\n\n* @<http://hackage.haskell.org/package/directory            directory>@\n\n* @<http://hackage.haskell.org/package/ghc-boot-th          ghc-boot-th>@\n\n* @<http://hackage.haskell.org/package/haskeline            haskeline>@\n\n* @<http://hackage.haskell.org/package/hoopl                hoopl>@\n\n* @<http://hackage.haskell.org/package/hpc                  hpc>@\n\n* @<http://hackage.haskell.org/package/old-locale           old-locale>@\n\n* @<http://hackage.haskell.org/package/old-time             old-time>@\n\n* @<http://hackage.haskell.org/package/pretty               pretty>@\n\n* @<http://hackage.haskell.org/package/random               random>@\n\n* @<http://hackage.haskell.org/package/tagged               tagged>@\n\n* @<http://hackage.haskell.org/package/template-haskell     template-haskell>@\n\n* @<http://hackage.haskell.org/package/terminfo             terminfo>@\n\n* @<http://hackage.haskell.org/package/time                 time>@\n\n* @<http://hackage.haskell.org/package/transformers         transformers>@\n\n* @<http://hackage.haskell.org/package/unix                 unix>@\n\n* @<http://hackage.haskell.org/package/unordered-containers unordered-containers>@\n\n* @<http://hackage.haskell.org/package/vector               vector>@\n\n* @<http://hackage.haskell.org/package/Win32                Win32>@\n\n* @<http://hackage.haskell.org/package/xhtml                xhtml>@\n\nOne can use these instances by importing\n\"TextShow.Instances\". Alternatively, there are monomorphic\nversions of the @showb@ function available in the other submodules\nof \"TextShow\".";
        buildType = "Simple";
      };
      components = {
        "text-show-instances" = {
          depends  = ((([
            hsPkgs.base-compat
            hsPkgs.bifunctors
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.haskeline
            hsPkgs.hoopl
            hsPkgs.hpc
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.xhtml
          ] ++ [
            hsPkgs.base
          ]) ++ (if _flags.template-haskell-2-11
            then [
              hsPkgs.template-haskell
              hsPkgs.ghc-boot-th
            ]
            else [
              hsPkgs.template-haskell
            ])) ++ (if _flags.new-functor-classes
            then [
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ]
            else [
              hsPkgs.transformers
            ])) ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.terminfo
              hsPkgs.unix
            ]);
        };
        tests = {
          "spec" = {
            depends  = (((([
              hsPkgs.base-compat
              hsPkgs.bifunctors
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.generic-deriving
              hsPkgs.ghc-prim
              hsPkgs.haskeline
              hsPkgs.hoopl
              hsPkgs.hpc
              hsPkgs.hspec
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.random
              hsPkgs.semigroups
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.text-show
              hsPkgs.th-orphans
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.xhtml
            ] ++ [
              hsPkgs.base
            ]) ++ (if _flags.template-haskell-2-11
              then [
                hsPkgs.template-haskell
                hsPkgs.ghc-boot-th
              ]
              else [
                hsPkgs.template-haskell
              ])) ++ (if _flags.new-functor-classes
              then [
                hsPkgs.transformers
                hsPkgs.transformers-compat
              ]
              else [
                hsPkgs.transformers
              ])) ++ pkgs.lib.optional (!_flags.developer) hsPkgs.text-show-instances) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.terminfo
                hsPkgs.unix
              ]);
          };
        };
      };
    }