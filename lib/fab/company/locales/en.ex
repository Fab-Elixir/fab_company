defmodule Fab.En.Company do
  @moduledoc false

  @behaviour Fab.Company

  @impl Fab.Company
  def buzz_adjective do
    [
      "24/7",
      "AI-driven",
      "B2B",
      "B2C",
      "back-end",
      "best-of-breed",
      "bleeding-edge",
      "collaborative",
      "compelling",
      "cross-media",
      "cross-platform",
      "customized",
      "cutting-edge",
      "decentralized",
      "distributed",
      "dynamic",
      "efficient",
      "end-to-end",
      "enterprise",
      "extensible",
      "frictionless",
      "front-end",
      "generative",
      "global",
      "granular",
      "holistic",
      "immersive",
      "impactful",
      "innovative",
      "integrated",
      "interactive",
      "intuitive",
      "killer",
      "leading-edge",
      "magnetic",
      "mission-critical",
      "next-generation",
      "one-to-one",
      "open-source",
      "out-of-the-box",
      "plug-and-play",
      "proactive",
      "quantum",
      "real-time",
      "revolutionary",
      "rich",
      "robust",
      "scalable",
      "seamless",
      "smart",
      "sticky",
      "strategic",
      "sustainable",
      "synergistic",
      "transparent",
      "turn-key",
      "ubiquitous",
      "user-centric",
      "value-added",
      "vertical",
      "viral",
      "virtual",
      "visionary",
      "world-class"
    ]
  end

  @impl Fab.Company
  def buzz_noun do
    [
      "AI",
      "ROI",
      "applications",
      "architectures",
      "blockchains",
      "channels",
      "communities",
      "content",
      "convergence",
      "deliverables",
      "e-commerce",
      "experiences",
      "functionalities",
      "infrastructures",
      "initiatives",
      "interfaces",
      "large language models",
      "lifetime value",
      "markets",
      "methodologies",
      "metrics",
      "mindshare",
      "models",
      "networks",
      "niches",
      "paradigms",
      "partnerships",
      "platforms",
      "relationships",
      "schemas",
      "smart contracts",
      "solutions",
      "supply-chains",
      "synergies",
      "systems",
      "technologies",
      "users",
      "web services"
    ]
  end

  @impl Fab.Company
  def buzz_phrase do
    [
      %Fab.Template{
        bindings: [
          verb: {Fab.Company, :buzz_verb, []},
          adjective: {Fab.Company, :buzz_adjective, []},
          noun: {Fab.Company, :buzz_noun, []}
        ],
        source: "<%= verb %> <%= adjective %> <%= noun %>"
      }
    ]
  end

  @impl Fab.Company
  def buzz_verb do
    [
      "aggregate",
      "architect",
      "benchmark",
      "brand",
      "collaborate",
      "cultivate",
      "deliver",
      "deploy",
      "disintermediate",
      "drive",
      "embrace",
      "empower",
      "enable",
      "engage",
      "engineer",
      "enhance",
      "evolve",
      "expedite",
      "exploit",
      "extend",
      "facilitate",
      "gamify",
      "generate",
      "grow",
      "harness",
      "implement",
      "incentivize",
      "incubate",
      "innovate",
      "integrate",
      "iterate",
      "leverage",
      "maximize",
      "mesh",
      "monetize",
      "optimize",
      "orchestrate",
      "productize",
      "redefine",
      "reinvent",
      "repurpose",
      "revolutionize",
      "scale",
      "seize",
      "simplify",
      "strategize",
      "streamline",
      "syndicate",
      "synthesize",
      "target",
      "transform",
      "transition",
      "unleash",
      "utilize",
      "visualize",
      "whiteboard"
    ]
  end

  @impl Fab.Company
  def name do
    [
      %Fab.Template{
        bindings: [
          last_name_1: {Fab.Person, :last_name, []},
          last_name_2: {Fab.Person, :last_name, []}
        ],
        source: "<%= last_name_1 %> - <%= last_name_2 %>"
      },
      %Fab.Template{
        bindings: [
          last_name: {Fab.Person, :last_name, []},
          name_suffix: {Fab.Company, :name_suffix, []}
        ],
        source: "<%= last_name %> <%=  name_suffix %>"
      },
      %Fab.Template{
        bindings: [
          last_name_1: {Fab.Person, :last_name, []},
          last_name_2: {Fab.Person, :last_name, []},
          last_name_3: {Fab.Person, :last_name, []}
        ],
        source: "<%= last_name_1 %>, <%= last_name_2 %> and <%= last_name_3 %>"
      }
    ]
  end

  @impl Fab.Company
  def name_suffix do
    [
      "Group",
      "Inc",
      "LLC",
      "and Sons"
    ]
  end
end
