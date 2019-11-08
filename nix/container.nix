# $ nix-build container.nix
# $ docker load < result

with import <nixpkgs> {};

rec {
    go-image = pkgs.dockerTools.buildImage {
        name = "go-image";
        tag = "latest";
        contents = [ pkgs.go ];
    };
}
