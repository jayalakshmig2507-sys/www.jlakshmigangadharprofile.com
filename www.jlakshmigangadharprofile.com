export default function Portfolio() {
  const skills = [
    'Sales Operations',
    'Business Analysis',
    'Data Analysis',
    'Salesforce (SFDC)',
    'Power BI',
    'Excel & Reporting',
    'CRM Management',
    'Process Improvement',
    'Dashboard Creation',
    'Stakeholder Management'
  ];

  const experiences = [
    {
      role: 'Sales Operation Analyst',
      company: 'Previous Organization',
      description:
        'Managed sales cadence reports, dashboards, data cleanup, CRM support, and business process improvements while collaborating with cross-functional teams.'
    },
    {
      role: 'Business & Data Analyst',
      company: 'Projects & Academic Work',
      description:
        'Worked on analytics, sustainability projects, reporting automation, and data-driven business insights.'
    }
  ];

  const projects = [
    {
      title: 'Renewable Energy Solutions for Campus Sustainability',
      description:
        'MBA Executive project focused on sustainable innovation and piezoelectric road implementation for energy generation.'
    },
    {
      title: 'Sales Operations Dashboard',
      description:
        'Created dashboards and operational reports for tracking opportunities, lead management, and business KPIs.'
    },
    {
      title: 'Gaming Sustainability Strategy',
      description:
        'Developed sustainability and cybersecurity concepts for a software gaming company project.'
    }
  ];

  return (
    <div className="min-h-screen bg-gray-100 text-gray-900">
      {/* Hero Section */}
      <section className="bg-gradient-to-r from-indigo-600 to-purple-600 text-white py-20 px-6">
        <div className="max-w-6xl mx-auto grid md:grid-cols-2 gap-10 items-center">
          <div>
            <h1 className="text-5xl font-bold mb-4">Jaylakshmi</h1>
            <p className="text-xl mb-6">
              Sales Operations Analyst | Business Analyst | Data Analyst
            </p>
            <p className="text-lg opacity-90 leading-relaxed">
              MSc student in Ireland with experience in Sales Operations,
              reporting, business analysis, CRM management, and data-driven
              decision making.
            </p>

            <div className="mt-8 flex gap-4 flex-wrap">
              <a
                href="https://www.linkedin.com/in/jayancimsc/"
                target="_blank"
                className="bg-white text-indigo-700 px-5 py-3 rounded-2xl font-semibold shadow-lg hover:scale-105 transition"
              >
                LinkedIn
              </a>

              <a
                href="https://github.com/"
                target="_blank"
                className="bg-black text-white px-5 py-3 rounded-2xl font-semibold shadow-lg hover:scale-105 transition"
              >
                GitHub
              </a>
            </div>
          </div>

          <div className="flex justify-center">
            <div className="w-72 h-72 rounded-full bg-white/20 backdrop-blur-lg border border-white/30 flex items-center justify-center text-7xl font-bold shadow-2xl">
              J
            </div>
          </div>
        </div>
      </section>

      {/* About */}
      <section className="max-w-6xl mx-auto py-16 px-6">
        <h2 className="text-3xl font-bold mb-6">About Me</h2>
        <div className="bg-white rounded-3xl shadow-xl p-8 leading-relaxed text-lg">
          I am passionate about Sales Operations, Business Analysis, and Data
          Analytics. I enjoy solving business problems, improving processes,
          creating dashboards, and supporting teams with data-driven insights.
          
          <br />
          <br />
          Currently based in Dublin, Ireland, I am actively looking for
          opportunities to grow my career while building strong professional
          networks.
        </div>
      </section>

      {/* Skills */}
      <section className="bg-white py-16 px-6">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-3xl font-bold mb-8">Skills</h2>

          <div className="grid grid-cols-2 md:grid-cols-5 gap-4">
            {skills.map((skill, index) => (
              <div
                key={index}
                className="bg-indigo-100 text-indigo-800 rounded-2xl px-4 py-4 text-center font-semibold shadow"
              >
                {skill}
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Experience */}
      <section className="max-w-6xl mx-auto py-16 px-6">
        <h2 className="text-3xl font-bold mb-8">Experience</h2>

        <div className="space-y-6">
          {experiences.map((exp, index) => (
            <div
              key={index}
              className="bg-white rounded-3xl shadow-xl p-8 hover:shadow-2xl transition"
            >
              <h3 className="text-2xl font-bold">{exp.role}</h3>
              <p className="text-indigo-600 font-semibold mt-2">
                {exp.company}
              </p>
              <p className="mt-4 text-gray-700 leading-relaxed">
                {exp.description}
              </p>
            </div>
          ))}
        </div>
      </section>

      {/* Projects */}
      <section className="bg-gray-50 py-16 px-6">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-3xl font-bold mb-8">Projects</h2>

          <div className="grid md:grid-cols-3 gap-6">
            {projects.map((project, index) => (
              <div
                key={index}
                className="bg-white rounded-3xl shadow-xl p-6 hover:-translate-y-2 transition"
              >
                <h3 className="text-xl font-bold mb-3">{project.title}</h3>
                <p className="text-gray-700 leading-relaxed">
                  {project.description}
                </p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Contact */}
      <section className="bg-indigo-600 text-white py-16 px-6">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-4xl font-bold mb-6">Let’s Connect</h2>
          <p className="text-lg opacity-90 mb-8">
            I am open to opportunities in Sales Operations, Business Analysis,
            and Data Analytics.
          </p>

          <div className="flex justify-center gap-4 flex-wrap">
            <a
              href="mailto:yourmail@gmail.com"
              className="bg-white text-indigo-700 px-6 py-3 rounded-2xl font-semibold shadow-lg hover:scale-105 transition"
            >
              Email Me
            </a>

            <a
              href="https://www.linkedin.com/in/jayancimsc/"
              target="_blank"
              className="bg-black text-white px-6 py-3 rounded-2xl font-semibold shadow-lg hover:scale-105 transition"
            >
              LinkedIn Profile
            </a>
          </div>
        </div>
      </section>
    </div>
  );
}
