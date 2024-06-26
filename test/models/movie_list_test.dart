import 'package:equifax_movie_db/models/movie_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const mockMovieListJson = {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/fqv8v6AycXKsivp1T5yKtLbGXce.jpg",
        "genre_ids": [878, 12, 28],
        "id": 653346,
        "original_language": "en",
        "original_title": "Kingdom of the Planet of the Apes",
        "overview":
            "Several generations in the future following Caesar's reign, apes are now the dominant species and live harmoniously while humans have been reduced to living in the shadows. As a new tyrannical ape leader builds his empire, one young ape undertakes a harrowing journey that will cause him to question all that he has known about the past and to make choices that will define a future for apes and humans alike.",
        "popularity": 4584.683,
        "poster_path": "/gKkl37BQuKTanygYQG1pyYgLVgf.jpg",
        "release_date": "2024-05-08",
        "title": "Kingdom of the Planet of the Apes",
        "video": false,
        "vote_average": 6.892,
        "vote_count": 828
      },
      {
        "adult": false,
        "backdrop_path": "/z121dSTR7PY9KxKuvwiIFSYW8cf.jpg",
        "genre_ids": [10752, 28, 18],
        "id": 929590,
        "original_language": "en",
        "original_title": "Civil War",
        "overview":
            "In the near future, a group of war journalists attempt to survive while reporting the truth as the United States stands on the brink of civil war.",
        "popularity": 2256.788,
        "poster_path": "/sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg",
        "release_date": "2024-04-10",
        "title": "Civil War",
        "video": false,
        "vote_average": 7.069,
        "vote_count": 1335
      },
      {
        "adult": false,
        "backdrop_path": "/xRd1eJIDe7JHO5u4gtEYwGn5wtf.jpg",
        "genre_ids": [878, 28, 12],
        "id": 823464,
        "original_language": "en",
        "original_title": "Godzilla x Kong: The New Empire",
        "overview":
            "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
        "popularity": 1952.221,
        "poster_path": "/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg",
        "release_date": "2024-03-27",
        "title": "Godzilla x Kong: The New Empire",
        "video": false,
        "vote_average": 7.233,
        "vote_count": 2546
      },
      {
        "adult": false,
        "backdrop_path": "/oavbmL3iddJUmC8nQjL6bLHwAP4.jpg",
        "genre_ids": [27, 53],
        "id": 719221,
        "original_language": "en",
        "original_title": "Tarot",
        "overview":
            "When a group of friends recklessly violate the sacred rule of Tarot readings, they unknowingly unleash an unspeakable evil trapped within the cursed cards. One by one, they come face to face with fate and end up in a race against death.",
        "popularity": 1478.101,
        "poster_path": "/gAEUXC37vl1SnM7PXsHTF23I2vq.jpg",
        "release_date": "2024-05-01",
        "title": "Tarot",
        "video": false,
        "vote_average": 6.514,
        "vote_count": 353
      },
      {
        "adult": false,
        "backdrop_path": "/3TNSoa0UHGEzEz5ndXGjJVKo8RJ.jpg",
        "genre_ids": [878, 28],
        "id": 614933,
        "original_language": "en",
        "original_title": "Atlas",
        "overview":
            "A brilliant counterterrorism analyst with a deep distrust of AI discovers it might be her only hope when a mission to capture a renegade robot goes awry.",
        "popularity": 1354.568,
        "poster_path": "/bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg",
        "release_date": "2024-05-23",
        "title": "Atlas",
        "video": false,
        "vote_average": 6.721,
        "vote_count": 616
      },
      {
        "adult": false,
        "backdrop_path": "/JtN7Q03S3oq7A4KZ7Z3I7m3osP.jpg",
        "genre_ids": [28, 80, 53],
        "id": 573435,
        "original_language": "en",
        "original_title": "Bad Boys: Ride or Die",
        "overview":
            "After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.",
        "popularity": 1268.631,
        "poster_path": "/nP6RliHjxsz4irTKsxe8FRhKZYl.jpg",
        "release_date": "2024-06-05",
        "title": "Bad Boys: Ride or Die",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 64
      },
      {
        "adult": false,
        "backdrop_path": "/H5HjE7Xb9N09rbWn1zBfxgI8uz.jpg",
        "genre_ids": [28, 35],
        "id": 746036,
        "original_language": "en",
        "original_title": "The Fall Guy",
        "overview":
            "Fresh off an almost career-ending accident, stuntman Colt Seavers has to track down a missing movie star, solve a conspiracy and try to win back the love of his life while still doing his day job.",
        "popularity": 1004.08,
        "poster_path": "/tSz1qsmSJon0rqjHBxXZmrotuse.jpg",
        "release_date": "2024-04-24",
        "title": "The Fall Guy",
        "video": false,
        "vote_average": 7.285,
        "vote_count": 1054
      },
      {
        "adult": false,
        "backdrop_path": "/tkHQ7tnYYUEnqlrKuhufIsSVToU.jpg",
        "genre_ids": [27],
        "id": 437342,
        "original_language": "en",
        "original_title": "The First Omen",
        "overview":
            "When a young American woman is sent to Rome to begin a life of service to the church, she encounters a darkness that causes her to question her own faith and uncovers a terrifying conspiracy that hopes to bring about the birth of evil incarnate.",
        "popularity": 870.659,
        "poster_path": "/uGyiewQnDHPuiHN9V4k2t9QBPnh.jpg",
        "release_date": "2024-04-03",
        "title": "The First Omen",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 410
      },
      {
        "adult": false,
        "backdrop_path": "/qjoX7hl721FOiyeHsDkeQ6rFVLl.jpg",
        "genre_ids": [16, 10751, 18, 12, 35],
        "id": 1022789,
        "original_language": "en",
        "original_title": "Inside Out 2",
        "overview":
            "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
        "popularity": 902.739,
        "poster_path": "/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg",
        "release_date": "2024-06-12",
        "title": "Inside Out 2",
        "video": false,
        "vote_average": 0,
        "vote_count": 0
      },
      {
        "adult": false,
        "backdrop_path": "/shrwC6U8Bkst9T9J7fr1A50n6x6.jpg",
        "genre_ids": [28, 12, 878],
        "id": 786892,
        "original_language": "en",
        "original_title": "Furiosa: A Mad Max Saga",
        "overview":
            "As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.",
        "popularity": 776.024,
        "poster_path": "/iADOJ8Zymht2JPMoy3R7xceZprc.jpg",
        "release_date": "2024-05-22",
        "title": "Furiosa: A Mad Max Saga",
        "video": false,
        "vote_average": 7.684,
        "vote_count": 745
      },
      {
        "adult": false,
        "backdrop_path": "/fY3lD0jM5AoHJMunjGWqJ0hRteI.jpg",
        "genre_ids": [878, 27, 28],
        "id": 940721,
        "original_language": "ja",
        "original_title": "ゴジラ-1.0",
        "overview":
            "In postwar Japan, Godzilla brings new devastation to an already scorched landscape. With no military intervention or government help in sight, the survivors must join together in the face of despair and fight back against an unrelenting horror.",
        "popularity": 781.006,
        "poster_path": "/hkxxMIGaiCTmrEArK7J56JTKUlB.jpg",
        "release_date": "2023-11-03",
        "title": "Godzilla Minus One",
        "video": false,
        "vote_average": 7.65,
        "vote_count": 1507
      },
      {
        "adult": false,
        "backdrop_path": "/xOMo8BRK7PfcJv9JCnx7s5hj0PX.jpg",
        "genre_ids": [878, 12],
        "id": 693134,
        "original_language": "en",
        "original_title": "Dune: Part Two",
        "overview":
            "Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.",
        "popularity": 747.846,
        "poster_path": "/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
        "release_date": "2024-02-27",
        "title": "Dune: Part Two",
        "video": false,
        "vote_average": 8.169,
        "vote_count": 4366
      },
      {
        "adult": false,
        "backdrop_path": "/1m1rXopfNDVL3UMiv6kriYaJ3yE.jpg",
        "genre_ids": [28, 53, 80, 878],
        "id": 882059,
        "original_language": "en",
        "original_title": "Boy Kills World",
        "overview":
            "When his family is murdered, a deaf-mute named Boy escapes to the jungle and is trained by a mysterious shaman to repress his childish imagination and become an instrument of death.",
        "popularity": 696.778,
        "poster_path": "/25JskXmchcYwj3jHRmcPm738MpB.jpg",
        "release_date": "2024-04-24",
        "title": "Boy Kills World",
        "video": false,
        "vote_average": 6.927,
        "vote_count": 245
      },
      {
        "adult": false,
        "backdrop_path": "/kYgQzzjNis5jJalYtIHgrom0gOx.jpg",
        "genre_ids": [16, 28, 10751, 35, 14],
        "id": 1011985,
        "original_language": "en",
        "original_title": "Kung Fu Panda 4",
        "overview":
            "Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.",
        "popularity": 738.237,
        "poster_path": "/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg",
        "release_date": "2024-03-02",
        "title": "Kung Fu Panda 4",
        "video": false,
        "vote_average": 7.123,
        "vote_count": 1904
      },
      {
        "adult": false,
        "backdrop_path": "/s9hW1DHfgy5ppK1fTUJuMKh4YFK.jpg",
        "genre_ids": [28, 53],
        "id": 980083,
        "original_language": "en",
        "original_title": "Top Gunner: Danger Zone",
        "overview":
            "An airliner filled with 800 passengers is forced to fly fast and low, above farmlands, suburbs and skyscraper-packed cities or the tons of explosives aboard will detonate. When an elite unit of US Air Force fighter jets is sent to provide escort, they find themselves facing a squadron of unidentifiable warplanes which ignites a deadly air battle that threatens to destroy all life above and below.",
        "popularity": 620.205,
        "poster_path": "/29UCk1nvPzn2XubLk5rKDMlHBRu.jpg",
        "release_date": "2022-05-20",
        "title": "Top Gunner: Danger Zone",
        "video": false,
        "vote_average": 4,
        "vote_count": 13
      },
      {
        "adult": false,
        "backdrop_path": "/11G6N5zW0KykVS0EcNKeXHUmQj8.jpg",
        "genre_ids": [10752],
        "id": 1136318,
        "original_language": "en",
        "original_title": "Battle Over Britain",
        "overview":
            "A young pilot, fresh out of training, is called to join a Flight while they wait for the call to scramble. Throughout a single day, he witnesses the skies of southern England filled with deadly dog fights, and after every exhausting battle the men return to their dispersal hut, only to find another of their number missing. Unwilling to surrender, the pilot and his comrades unite to take to the skies once more, determined to defend not only the airfield, but their entire country.",
        "popularity": 818.997,
        "poster_path": "/8htJ7keZTwa08aC9OKyiqaq1cNJ.jpg",
        "release_date": "2023-12-01",
        "title": "Battle Over Britain",
        "video": false,
        "vote_average": 6.417,
        "vote_count": 12
      },
      {
        "adult": false,
        "backdrop_path": "/iafs5DG5fGq7ef0acl3xlX4BFrs.jpg",
        "genre_ids": [18, 10770],
        "id": 1219685,
        "original_language": "fr",
        "original_title": "Un père idéal",
        "overview": "",
        "popularity": 640.782,
        "poster_path": "/4xJd3uwtL1vCuZgEfEc8JXI9Uyx.jpg",
        "release_date": "2024-04-21",
        "title": "Un père idéal",
        "video": false,
        "vote_average": 5.695,
        "vote_count": 41
      },
      {
        "adult": false,
        "backdrop_path": "/b93N6Mb08NhFhobB8KrR5GBaPP5.jpg",
        "genre_ids": [878, 27],
        "id": 969686,
        "original_language": "en",
        "original_title": "4 Horsemen: Apocalypse",
        "overview":
            "A small team of scientists must race against time to stop what seems to be a cascade of global disasters signaling the possible apocalypse and end of days.",
        "popularity": 570.35,
        "poster_path": "/dt3mo4tArf2llDiht91cnvUtSgT.jpg",
        "release_date": "2022-04-29",
        "title": "4 Horsemen: Apocalypse",
        "video": false,
        "vote_average": 5.687,
        "vote_count": 75
      },
      {
        "adult": false,
        "backdrop_path": "/vWzJDjLPmycnQ42IppEjMpIhrhc.jpg",
        "genre_ids": [16, 35, 10751, 12],
        "id": 748783,
        "original_language": "en",
        "original_title": "The Garfield Movie",
        "overview":
            "Garfield, the world-famous, Monday-hating, lasagna-loving indoor cat, is about to have a wild outdoor adventure! After an unexpected reunion with his long-lost father – scruffy street cat Vic – Garfield and his canine friend Odie are forced from their perfectly pampered life into joining Vic in a hilarious, high-stakes heist.",
        "popularity": 574.89,
        "poster_path": "/p6AbOJvMQhBmffd0PIv0u8ghWeY.jpg",
        "release_date": "2024-04-30",
        "title": "The Garfield Movie",
        "video": false,
        "vote_average": 6.49,
        "vote_count": 145
      },
      {
        "adult": false,
        "backdrop_path": "/nb3xI8XI3w4pMVZ38VijbsyBqP4.jpg",
        "genre_ids": [18, 36],
        "id": 872585,
        "original_language": "en",
        "original_title": "Oppenheimer",
        "overview":
            "The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.",
        "popularity": 504.012,
        "poster_path": "/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
        "release_date": "2023-07-19",
        "title": "Oppenheimer",
        "video": false,
        "vote_average": 8.095,
        "vote_count": 8260
      }
    ],
    "total_pages": 44560,
    "total_results": 891195
  };
  group('MovieList', () {
    test('verify json parsing', () {
      final movieList = MovieList.fromJson(mockMovieListJson);

      expect(movieList.page, mockMovieListJson['page']);
      expect(movieList.results.length,
          (mockMovieListJson['results'] as List).length);
      expect(movieList.totalPages, mockMovieListJson['total_pages']);
      expect(movieList.totalResults, mockMovieListJson['total_results']);
    });
  });
}
