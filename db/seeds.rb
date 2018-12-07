# seed the database with its default values.
# rails db:seed (or created alongside the database with db:setup).

## Resource Types
ResourceType.create(id: 1, name: "READING", description: "Tutorials, blog posts, articles, books, and general developer writings.", value: 0)
ResourceType.create(id: 2, name: "VIDEO", description: "Instructional videos related to computer science and technology", value: 1)
ResourceType.create(id: 3, name: "PROJECT", description: "Links to sample iOS and Android projects, ideally containing source code", value: 2)
ResourceType.create(id: 4, name: "OTHER", description: "Miscellanous educational resources", value: 3)

## Resources
Resource.create(name: "Getting Started with App Inventor", 
                description: "Build an Android app using MIT's drag-and-drop App Inventor platform", 
                url: "http://appinventor.mit.edu/explore/get-started.html", 
                view_count: 0, 
                resource_type_id: 1,
                is_approved: true)

Resource.create(name: "Android Xamarin getting started", 
                description: "Learn to create powerful Android apps using Microsoft's Xamarin tools and C#", 
                url: "https://docs.microsoft.com/en-us/xamarin/android/", 
                view_count: 0, 
                resource_type_id: 1,
                is_approved: true)

Resource.create(name: "iOS Xamarin getting started", 
                description: "Learn to create Apple iOS apps using Microsoft's Xamarin tools and C#", 
                url: "https://docs.microsoft.com/en-us/xamarin/ios/", 
                view_count: 0, 
                resource_type_id: 1,
                is_approved: true)

Resource.create(name: "Android Studio introduction", 
                description: "Build your first app in Android Studio using Java or Kotlin", 
                url: "https://developer.android.com/training/basics/firstapp/", 
                view_count: 0, 
                resource_type_id: 1,
                is_approved: true)

Resource.create(name: "Android Google developer training courses", 
                description: "Free Android development courses for beginning programmers", 
                url: "https://developers.google.com/training/android/#for-new-programmers", 
                view_count: 0, 
                resource_type_id: 4,
                is_approved: true)

Resource.create(name: "12 best Android tutorials for first-time developers", 
                description: "SitePoint article linking to Android tutorials and projects", 
                url: "https://www.sitepoint.com/12-android-tutorials-beginners/", 
                view_count: 0, 
                resource_type_id: 1,
                is_approved: true)

Resource.create(name: "How to make an iPhone app", 
                description: "An article and video serious about getting started with iOS development in Swift", 
                url: "https://codewithchris.com/how-to-make-an-iphone-app/", 
                view_count: 0, 
                resource_type_id: 2,
                is_approved: true)

Resource.create(name: "Intro to App Lab", 
                description: "Create your own app in JavaScript using block-based programming or take your skills to the next level with text-based programming.", 
                url: "https://studio.code.org/s/applab-intro/stage/1/puzzle/1/", 
                view_count: 0, 
                resource_type_id: 4,
                is_approved: true,
                is_featured: true, 
                image_url: "https://code.org/images/app-lab/applab-intro.png")

Resource.create(name: "Build Android apps with MIT App Inventor", 
                description: "MIT App Inventor is an intuitive, visual programming environment that allows everyone – even children – to build fully functional Android apps for smartphones and tablets.", 
                url: "http://www.appinventor.org/", 
                view_count: 0, 
                resource_type_id: 2,
                is_approved: true,
                is_featured: true,
                image_url: "https://pbs.twimg.com/media/DHCNTrhUwAAlx9R.jpg")

Resource.create(name: "App Lab: Make a Simple App", 
                description: "Learn how to use a dropdown menu to link between pages and use a radio button to ask a question to users. Learn more about App Lab <a href='https://code.org/educate/applab' target='_blank' rel='noopener'>here</a> ", 
                url: "https://www.youtube.com/watch?v=tDnoxkOSfQw", 
                view_count: 0, 
                resource_type_id: 2,
                is_approved: true,
                is_featured: true,
                image_url: "https://code.org/educate/applab")
