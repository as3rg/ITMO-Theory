{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
      (texlive.combine { inherit (texlive) chktex scheme-small latexmk mathdots collection-fontsextra collection-langcyrillic; } )
    ];
}
