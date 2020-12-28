# Sunflower-Seed-Patterns
<p><i>Sunflower-Seed-Patterns</i> is a program that simulates the growth of sunflower seeds. It allows the user to set the angle of rotation between new seeds, which results in different patterns.</p>
<h2>Why are sunflower seeds arranged the way they are?</h2>
<img src="readme/seedsPhoto.jfif" alt="seedsPhoto" width="1200" height="600">
<p style="font-size: 8;font-style: italic;">Image credit: "Sunflower Seeds"</a><span> by <a href="https://www.flickr.com/photos/84202567@N00">dogbomb</a></span> is licensed under <a href="https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY 2.0</a><a href="https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=html" target="_blank" rel="noopener noreferrer" style="display: inline-block;white-space: none;margin-top: 2px;margin-left: 3px;height: 22px !important;"></a></p>
<p>The particular pattern in which sunflower seeds grow aims to minimize the amount of wasted space. And it has been discovered that this pattern is caused by a constant angle of rotation between the newest seed and the next one to be grown. What angle of rotation will achieve this? Incredibly, that angle is equal to &Phi; (~0.61803 or 1.6803), multiplied by 2&#120587; (aka a full turn). So, in the picture you see above, the angle between consecutive seeds is equal to &Phi; times a full turn. Amazing, right?</p>
<h2>Why &Phi; is the best</h2>
<p>How come &Phi;, also known as <i>the golden ratio</i>, multiplied by a full turn gives you the optimal pattern for the growth of sunflower seeds? What's wrong with 1/3 of a full turn, or 1/10 of a full turn, or something like 1/<i>e</i> times a full turn? Well, let's put some of these other turn sizes to the test and it'll become clear to you.</p>

<h3>Rotating by 1/3 of a full turn - A turn size of 1/3 produces this pattern:</h3>

<img src="readme/1_3 turn.gif" alt="1/3 turn" width="250" height="250">

<h3>Rotating by 1/10 of a full turn - A turn size of 1/10 produces this pattern:</h3>

<img src="readme/1_10 turn.gif" alt="1/10 turn" width="250" height="250">
  
<h3>Rotating by 5/6.02 of a full turn - A turn size of 5/6.02 produces this pattern:</h3>

<img src="readme/5_602 turn.gif" alt="5/6.02 turn" width="250" height="250">  

<h3>Rotating by 1/2.01 of a full turn - A turn size of 1/2.01 produces this pattern:</h3>

<img src="readme/1_201 turn.gif" alt="1/2.01 turn" width="250" height="250">  

<p>You may have noticed that the number of "arms" in the seed pattern corresponds to the denominator of the turn size. This is clear for the turn sizes of 1/3, and 1/10, as you can clearly see their results of 3 arms and 10 arms, respectively. But for the latter two turn sizes, 5/6.02, 1/2.01, this property is less obvious, but still noticeable, since the denominators are close to an integer, but not quite an integer. As a result, rather than straight arms, you get curvy spirals, with the number of spirals basically equal to the denominator of the turn size. In any case, it seems that the denominator of the turn size corresponds to the number of arms/spirals. And it seems like these clearly-defined arms/spirals tend to waste a lot of space. So we want to avoid patterns with arms/spirals like these.</p>

<h3>Rotating by &#8730;2/2 of a full turn - A turn size of &#8730;2/2 produces this pattern:</h3>

<img src="readme/sqrt(2)_2 turn.gif" alt="sqrt(2)/2 turn" width="250" height="250">

<h3>Rotating by 1/<i>e</i> of a full turn - A turn size of 1/<i>e</i> produces this pattern:</h3>

<img src="readme/1_e turn.gif" alt="1/e turn" width="250" height="250">

<p>These two turn sizes are both irrational, meaning they can't be expressed as an integer over another integer (or an integer over an almost-integer, like 5/6.02 or 1/2.01). Since irrational numbers can't be expressed as fractions, they don't have a denominator. As a reuslt, irrational turn sizes don't create well-defined spiral arms like 1/10 and 1/3, or even like 5/6.02, or 1/2.02. But they still create <i>some</i> kind of spiral arms. Why? Well, both of these irrational turn sizes can be well-approximated by a rational number. &#8730;2/2 can be well-approximated by 7071/10000. Likewise, 1/<i>e</i> can be well-approximated by 1839/5000. Thus, both of these turn sizes result in patterns with at least some semblance to spiral arms. The patterns are very space-efficient (certainly better the ones created by turn sizes of 1/10 and 1/3), but not perfect, as they still have spiral arms that create little pockets of wasted space.</p>

<p> What can be learned from this is that &#8730;2/2 and 1/<i>e</i> are irrational, just not <i>irrational enough</i>.</p>

<p> To get the perfect turn size to create the perfect, most space-efficient pattern, we need the <i>most irrational</i> number, a number that can't be well-approximated by <i>any</i> fraction. </p>

<h2> Finding the <i>most irrational</i> number </h2>
<p>The following is called a <i>continued fraction</i>:</p>
<img src="readme/continued frac.jpg" alt="continued fraction" width="400" height="240">
<p>What's special about this particular continued fraction is that we can't terminte the fraction at any point and get a good aproximation for &Phi; (no matter where you "chop off" the fraction, the bit that's chopped off is never insignificant enough to make your approximation good). As a reuslt, we can't get a good rational approximation for the number &Phi;. </p>

<p>Solving for &Phi;, we get: </p>
<img src="readme/phi.png" alt="phi" width="400" height="380">
<p> And now, as you can see,  turn size of &Phi; (0.61803) gives us that "perfect" pattern. </p>
<img src="readme/phi turn.gif" alt="phi turn" width="400" height="380">

<h2> Now try the program yourself! </h2>

