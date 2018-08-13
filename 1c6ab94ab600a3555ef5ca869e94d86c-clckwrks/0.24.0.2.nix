{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "clckwrks";
        version = "0.24.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2015 SeeReason Partners LLC, Jeremy Shaw";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "A secure, reliable content management system (CMS) and blogging platform";
      description = "clckwrks (pronounced, clockworks) aims to compete\ndirectly with popular PHP-based blogging and CMS\nplatforms. Clckwrks aims to support one-click\ninstallation of plugins and themes. End users\nshould be able to use it with zero Haskell\nknowledge. Haskell developers can extend clckwrks\nby creating new plugins or by building sites\naround the existing clckwrks core and plugins.\n\nclckwrks is still in very early development. Not all features have been implement yet.";
      buildType = "Custom";
    };
    components = {
      "clckwrks" = {
        depends  = [
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.aeson-qq)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.happstack-authenticate)
          (hsPkgs.happstack-hsp)
          (hsPkgs.happstack-jmacro)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-server-tls)
          (hsPkgs.hsp)
          (hsPkgs.hsx-jmacro)
          (hsPkgs.hsx2hs)
          (hsPkgs.ixset)
          (hsPkgs.jmacro)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.reform)
          (hsPkgs.reform-happstack)
          (hsPkgs.reform-hsp)
          (hsPkgs.safecopy)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.uuid-orphans)
          (hsPkgs.uuid-types)
          (hsPkgs.unordered-containers)
          (hsPkgs.userid)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.web-plugins)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-happstack)
          (hsPkgs.web-routes-hsp)
          (hsPkgs.web-routes-th)
          (hsPkgs.xss-sanitize)
        ] ++ (if _flags.network-uri
          then [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ]
          else [ (hsPkgs.network) ]);
        libs = [ (pkgs."ssl") ];
      };
    };
  }