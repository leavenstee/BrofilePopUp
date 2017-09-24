# BrofilePopUp

A simple and easy to use profile pop up.

## Instalation

### Cocoa Pod

wip

### Manual

Simply add the `BrofilePopUp.swift` to your project

## Usage

Creating a BrofileView is the same as an UIView

```
let bro = BrofilePopUp(firstName: "Steven", lastName: "Lee", username: "leavenstee", picture: UIImage("burger"), bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis tempor nisi. Fusce sit amet egestas nunc, quis convallis metus. Suspendisse nisi augue, congue sed convallis ac, maximus laoreet lorem. Nunc pretium, diam vel volutpat rhoncus, mi quam fermentum erat, nec aliquet velit quam eget purus. Cras commodo nunc leo, quis pharetra leo facilisis egestas. Nunc urna purus, pellentesque sed dictum ut, vehicula id libero.")
```

Then instead of adding the sub view just call
` bro.show(vc: self) `

The brofile dismisses when you touch anywhere on the screen.

## Structure

The brofile pop up containts `firstName`, `lastName`, `username`, `picture`, and `bio`.


## Hackers
 @leavenstee ~ Steven Lee ~ leavenstee.me

