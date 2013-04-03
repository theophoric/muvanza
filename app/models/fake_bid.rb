module FakeBid
  def self.bids
    [
      {
        name:"Zhangs Moving Company",
        image_url:"http://s3-media3.ak.yelpcdn.com/bphoto/meT5p8W4R1R5MHnQHRJ9KA/60s.jpg",
        yelp_url:"http://www.yelp.com/adredir?position=0&redirect_url=http%3A%2F%2Fwww.yelp.com%2Fbiz%2Fzhangs-moving-company-san-francisco-2&request_id=cc2d059b7984cffc&signature=9f31c8f691fd9fda0b8c5088ec260e7e5585d4cbe4da53c4b28603b40acaee38",
        description: "",
        rating: 3.7,
        amount:575
      },
      {
        name:"Spartan Moving Company",
        image_url:"http://s3-media4.ak.yelpcdn.com/bphoto/8xJJWe6xKvdICVHvyABsWA/60s.jpg",
        yelp_url:"http://www.yelp.com/biz/spartan-moving-company-san-francisco#query:moving%20company",
        description:"",
        rating: 4.1,
        amount:720
      },
      {
        name:"Delancey Street Moving & Trucking",
        image_url:"http://s3-media2.ak.yelpcdn.com/bphoto/kyspOpzEwznGboEhbdeGHQ/60s.jpg",
        yelp_url:"http://www.yelp.com/biz/delancey-street-moving-and-trucking-san-francisco#query:moving%20company",
        description:"",
        rating: 3.9,
        amount:595
      },
      {
        name:"Golden Bay Movers",
        image_url:"http://s3-media3.ak.yelpcdn.com/bphoto/7tl4ubFHpzD457noJq_Bsg/60s.jpg",
        yelp_url:"http://www.yelp.com/biz/golden-bay-movers-san-francisco#query:moving%20company",
        description:"",
        rating: 4.5,
        amount:825
      }
    ].collect{|h| OpenStruct.new(h)}
  end


end