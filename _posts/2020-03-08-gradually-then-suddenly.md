---
layout: post
title: „Gradually, then suddenly“ — four concepts that may help us think clearly about the coronavirus epidemic
description: This is a collection of short CSS snippets I thought might be useful for beginners
summary: This is a collection of short CSS snippets I thought might be useful for beginners.
tags: complexity models
---
*This essay was originally published on [Medium](https://medium.com/@dannybuerkli/gradually-then-suddenly-four-concepts-that-may-help-us-think-clearly-about-the-coronavirus-671e2583f828) (08 March 2020).*

-   This essay is also available, in lightly updated form, on the website of the [New England Complex Systems Systems Institute](https://necsi.edu/gradually-then-suddenly) (NECSI)

-   A [German translation](https://www.reatch.ch/de/content/erst-ganz-langsam-dann-sehr-schnell) has been published by [reatch](https://www.reatch.ch/de/content/erst-ganz-langsam-dann-sehr-schnell) ("research and technology in switzerland")

-   [Massimo Conte](https://twitter.com/passipo) of the [Complexity Education Project](https://www.complexityeducation.com/2020/03/13/prima-gradualmente-poi-improvvisamente/) has published an [Italian translation](https://www.complexityeducation.com/2020/03/13/prima-gradualmente-poi-improvvisamente/)

<br>
* * * * *
<br>

The current situation around the coronavirus epidemic is evolving rapidly. Switzerland, where I'm based, as of March 7 2020, has 228 confirmed cases. The overwhelming odds are that this number will increase rapidly and with it will the number of seriously affected individuals.

**In some of my social circles the most pressing worry is, however, not centered on what we ought to be doing to get this under control. For many people the overriding concern is seemingly not to be seen as worried or, god forbid, as "panicking".**

From what I can tell this doesn't derive from a sober analysis of the facts but from some sort of magical thinking which says that bad things haven't happened here in a long time and therefore surely this cannot be bad.

Mental models, like the one just mentioned above, are the things which help us think about the world. That's why, in situations like these, it may be helpful to examine and challenge our mental models.

So here are four basic concepts ([taken from complex systems thinking](https://en.wikipedia.org/wiki/Complex_system)) which can help us make sense of what is going on. They also help explain why epidemiologists and public health experts are as alarmed as they are.

Three important caveats before we continue:

First, I'm neither an epidemiologist nor a public health expert nor a certified expert on complex systems. For all I know most of what follows could be wrong. I might well also be missing one or more crucial considerations.

Second, all of what follows below might be painfully obvious to you. I also claim no originality here. All of this is basic, none of it is novel. I draw my inspiration from complex systems thinking but these concepts can be found in other disciplines as well.

Third,what follows is --- of course --- not some sort of *complete* description of how we should think about any epidemic.

There is also always an obvious risk of embarrassing yourself when writing about a situation which evolves rapidly but here we are.

So proceed with caution. Also, wash your hands and follow your local public health advice.

Exponential growth: "yesterday everything was still under control?!"
====================================================================

Italy went from one diagnosed case to well over 3'000 in just over a month (34 days) with only three cases in the first 21 days. It's safe to say that most intuitively did not expect the number of diagnosed cases to grow so quickly.

We are all familiar with the [story](https://en.wikipedia.org/wiki/Wheat_and_chessboard_problem) of the inventor who asked to be modestly compensated by his emperor by receiving one grain of rice on the first square of the chessboard, two on the second square, four on the third square, and so on until all squares are filled. About halfway into the chessboard the emperor realizes that the request wasn't as modest.

The point is that exponential growth keeps surprising us. And for some reason [we don't seem to have a good intuitive handle on it](https://ourworldindata.org/coronavirus).

Ray Kurzweil coined the expression of the "[second half of the chessboard](https://image-src.bcg.com/Images/BCG-The-Double-Game-of-Digital-Strategy-Oct-2015_tcm27-88402.pdf)". In the first half the effects are large but potentially manageable. In the second half things spiral out of control.

![](/assets/20200308_graduallythensuddenly_a.png)
<figcaption>"Everything is fine" -> "It's growing but we got this under control" -> "Oh..."</figcaption>

What does that mean?

A small number of cases COVID-19 cases combined with an exponential growth rate may not, as we might assume, be a small problem. Absent an effective intervention which prevents further exponential growth a small number of cases may already spell deep trouble. Better avoid getting into the 'second half of the chessboard' (see also [this thread by epidemiologist Marcel Salathé](https://twitter.com/marcelsalathe/status/1236410942726049794?s=21) on this topic).

Of course the exponential growth of coronavirus infections cannot literally go on forever because there is only a finite number of humans. It is also true that diseases do not usually spread at an exponential rate for the entire duration of an epidemic.

The point is, however, that we will tend to underestimate the danger that an initial small number of cases poses because we struggle to imagine how quickly that small number can turn into a very large one.

The [current doubling time](https://ourworldindata.org/coronavirus) (as of March 6, excluding China) is three days. Every three days the number of known coronavirus cases doubles.

Such exponential growth is why intervening early and heavily may well be justified. The logic with all undesirable things with exponential growth rates is the same: you want to nip it in the bud early. Early action may well be *orders of magnitude* cheaper and easier compared to reacting later.

Phase changes: Everything is fine until it suddenly isn't
=========================================================

Complex systems tend to have 'tipping points' and go through 'phase changes' once they reach one of those. This means that once a system reaches a certain threshold things can change rapidly.

Take the provision of healthcare in hospitals as an example. An epidemic starts and hospital beds start filling up. Everything is basically fine. We can provide adequate medical care to everyone who shows up and needs it. No need to overreact or introduce costly containment measures, right?

Maybe, except that at one point we will hit a 'tipping point' and run out of hospital beds (or ventilators, or masks, or any other finite resource).

Once that happens, things shift suddenly.

Survival rates might go down because we cannot provide care anymore to the same standard, infection rates among healthcare staff go up because there aren't enough masks to go around, etc.

Imagine a bathtub that keeps filling up with water. Water flows in at a constant rate. The tub slowly fills. Everything is completely fine. Until at one point the tub starts to overflow. The fact that the tub hasn't overflowed *yet* doesn't tell us that we shouldn't worry about it overflowing.

![](/assets/20200308_graduallythensuddenly_b.png)

The same logic also holds for supply chains. Many firms will have some amount of material in stock.

The fact that they are still able to function for a period of time in the absence of continued deliveries from their suppliers tells us very little about how resilient the system really is.

Everything can *seem* to continue just fine for a while until it suddenly starts to fall apart because one or more critical components are simply not available anymore. For the most part we should be able to know in advance where things will fall apart --- though that doesn't necessarily mean that we can do anything about it.

Delayed feedback cycles: "why are things still getting worse even though we introduced all these measures?"
===========================================================================================================

Imagine how hard it would be to drive a car where there was a lag of just a few seconds between you turning the steering wheel and the car doing what you want it to do. It would be phenomenally annoying.

(This is also why cooks prefer gas stoves over electric ones: an electric stove has a built-in delay between me turning the knob up or down and the temperature changing. With gas stoves there is no delay, the temperature rises or falls immediately.)

This is the situation we are finding ourselves in, both in terms of detection of the disease and in terms of understanding the effects of measures taken in response to the epidemic.

The cases that are being diagnosed today are people who got infected two weeks ago or so. The current count of diagnosed cases captures a past reality, not the present situation. It's like looking at a star at night --- because light takes time to travel to us you're looking at the past.

![](/assets/20200308_graduallythensuddenly_c.png)

The delayed feedback loops hold for our understanding of whether the measures that are being taken are effective. Italy introduced school closures on March 04. Whether these will curb the number of new infections will be known only two weeks after that (and quite possibly even later).

This makes decision-making very difficult for governments. One implication is that any restrictions that are put in place will likely be lifted slowly and gradually rather than all at once in order to avoid wild swings.

Another implication, particularly when you put this together with exponential growth, is that you need to act early because the results of the intervention will only show with a delay.

Leverage points: (relatively) small change, (relatively) large effect
=====================================================================

Another feature of complex systems is that there usually exist ‚leverage points', interventions which can create an outsized effect because of their position and influence in the system.

This cuts both ways, of course.

If you wanted to accelerate the spread of SARS-CoV-2 quickly and cheaply you'd be well advised to encourage mass gatherings.

If, on the other hand, you want to do the opposite you'd encourage 'social distancing', increased hand washing as well as other personal hygiene measures. Because they are --- hopefully --- 'leverage points' these may well make a much bigger difference than we might intuitively believe.

"Social distancing" and handwashing might be two examples of such leverage points. They are both *comparatively* easy and inexpensive to implement yet they might make a big difference.

![](/assets/20200308_graduallythensuddenly_d.png)
<figcaption>"Death of Achilles" by Rubens --- Paris found a leverage point and... you know how the story ends</figcaption>

If these four concepts happen to apply in this situation then we're well advised to act swiftly because that may well save us from a lot of pain.

I offer these thoughts in the spirit of Donella Meadows --- a pioneer of systems thinking --- who said: *"Remember, always, that everything you know, and everything everyone knows, is only a model. Get your model out there where it can be viewed. Invite others to challenge your assumptions and add their own."*

<br>
* * * * *
<br>

*Further reading:*

-   Three people you should follow on Twitter on this are [Marcel Salathé](https://twitter.com/marcelsalathe), [Marcel Althaus](https://twitter.com/C_Althaus), and [Yaneer Bar-Yam](https://twitter.com/yaneerbaryam).

-   For an accessible general introduction to ‚system thinking': [Donella H. Meadows, Thinking in Systems --- A Primer](https://www.chelseagreen.com/product/thinking-in-systems/) and [Mark Foden's "The clock and the cat"](https://markfoden.com/clockcat) podcast

-   For a highly visual and interactive explanation of disease dynamics: Kevin Simler's ["Going Critical"](https://www.meltingasphalt.com/interactive/going-critical/)

-   For a short explanation of ‚base rate thinking' vs. ‚exponential thinking': [Tyler Cowen's „growthers vs. base-raters" article on Bloomberg Opinion](https://www.bloomberg.com/opinion/articles/2020-03-03/how-fast-will-the-new-coronavirus-spread-two-sides-of-the-debate)

-   For a more general introduction on how complexity relates to policy making: [Andrew Haldane's 2012 speech „The dog and the frisbee"](https://www.bis.org/review/r120905a.pdf)

<br>
* * * * *
<br>

I owe a lot of thanks to all the individuals who took the time to read and comment on initial drafts. I asked people with expertise in epidemiology and other related fields to look over it in an attempt to avoid obvious mistakes. Any remaining errors are, obviously, mine.