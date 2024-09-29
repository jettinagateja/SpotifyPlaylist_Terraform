data "spotify_search_track" "Weeknd" {
  artist = "The Weeknd"

}

resource "spotify_playlist" "Weeknd" {
  name        = "Naga Teja's - Playlist"
  description = "This playlist was created using Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.Weeknd.tracks[1].id,
    data.spotify_search_track.Weeknd.tracks[2].id,
    data.spotify_search_track.Weeknd.tracks[0].id,
  ]
}


