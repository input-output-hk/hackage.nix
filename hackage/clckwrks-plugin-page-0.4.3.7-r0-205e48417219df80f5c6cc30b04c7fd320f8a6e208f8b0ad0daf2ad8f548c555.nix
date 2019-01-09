{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "clckwrks-plugin-page"; version = "0.4.3.7"; };
      license = "BSD-3-Clause";
      copyright = "2012, 2013 Jeremy Shaw, SeeReason Partners LLC";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "support for CMS/Blogging in clckwrks";
      description = "This provides two similar concepts Pages and Posts. Both allow\nyou to create page content by editting pages in the browser. A Post\nis simply a page which is displayed in the blog.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.clckwrks)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.happstack-hsp)
          (hsPkgs.happstack-server)
          (hsPkgs.hsp)
          (hsPkgs.hsx2hs)
          (hsPkgs.ixset)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.reform)
          (hsPkgs.reform-happstack)
          (hsPkgs.reform-hsp)
          (hsPkgs.safecopy)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.template-haskell)
          (hsPkgs.uuid)
          (hsPkgs.uuid-orphans)
          (hsPkgs.web-plugins)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-happstack)
          (hsPkgs.web-routes-th)
          ];
        };
      };
    }